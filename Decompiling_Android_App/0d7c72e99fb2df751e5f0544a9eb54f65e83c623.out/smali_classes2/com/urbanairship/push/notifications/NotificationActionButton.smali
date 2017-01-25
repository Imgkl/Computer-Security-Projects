.class public Lcom/urbanairship/push/notifications/NotificationActionButton;
.super Ljava/lang/Object;
.source "NotificationActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/notifications/NotificationActionButton$1;,
        Lcom/urbanairship/push/notifications/NotificationActionButton$Builder;
    }
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final extras:Landroid/os/Bundle;

.field private final iconId:I

.field private final id:Ljava/lang/String;

.field private final isForegroundAction:Z

.field private final labelId:I

.field private remoteInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "labelId"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "isForegroundAction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p7, "remoteInputs":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/push/notifications/LocalizableRemoteInput;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    .line 59
    iput p2, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    .line 60
    iput-object p5, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    .line 61
    iput-object p4, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    .line 62
    iput-boolean p6, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    .line 63
    iput-object p7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;Lcom/urbanairship/push/notifications/NotificationActionButton$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Landroid/os/Bundle;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Lcom/urbanairship/push/notifications/NotificationActionButton$1;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/urbanairship/push/notifications/NotificationActionButton;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method createAndroidNotificationAction(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionsPayload"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p4, "notificationId"    # I

    .prologue
    const/4 v10, 0x0

    .line 143
    iget v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    if-lez v7, :cond_0

    iget v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "label":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    if-nez v7, :cond_1

    move-object v1, v5

    .line 148
    .local v1, "actionDescription":Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v7, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v7, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

    iget-object v9, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

    invoke-virtual {v7, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

    iget-boolean v9, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 157
    .local v4, "intent":Landroid/content/Intent;
    iget-boolean v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    if-eqz v7, :cond_2

    .line 158
    const-class v7, Lcom/urbanairship/CoreActivity;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 165
    .local v2, "actionPendingIntent":Landroid/app/PendingIntent;
    :goto_2
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget v8, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    invoke-direct {v7, v8, v5, v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v0

    .line 168
    .local v0, "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    iget-object v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 169
    iget-object v7, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;

    .line 170
    .local v6, "remoteInput":Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
    invoke-virtual {v6, p1}, Lcom/urbanairship/push/notifications/LocalizableRemoteInput;->createRemoteInput(Landroid/content/Context;)Landroid/support/v4/app/RemoteInput;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    goto :goto_3

    .line 143
    .end local v0    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .end local v1    # "actionDescription":Ljava/lang/String;
    .end local v2    # "actionPendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "remoteInput":Lcom/urbanairship/push/notifications/LocalizableRemoteInput;
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 144
    .restart local v5    # "label":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    goto :goto_1

    .line 161
    .restart local v1    # "actionDescription":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_2
    const-class v7, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v4, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    invoke-static {p1, v10, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .restart local v2    # "actionPendingIntent":Landroid/app/PendingIntent;
    goto :goto_2

    .line 174
    .restart local v0    # "actionBuilder":Landroid/support/v4/app/NotificationCompat$Action$Builder;
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v7

    return-object v7
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->iconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->labelId:I

    return v0
.end method

.method public getRemoteInputs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/notifications/LocalizableRemoteInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->remoteInputs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public isForegroundAction()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/urbanairship/push/notifications/NotificationActionButton;->isForegroundAction:Z

    return v0
.end method
