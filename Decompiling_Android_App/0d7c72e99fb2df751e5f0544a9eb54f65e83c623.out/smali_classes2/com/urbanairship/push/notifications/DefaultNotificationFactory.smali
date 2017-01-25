.class public Lcom/urbanairship/push/notifications/DefaultNotificationFactory;
.super Lcom/urbanairship/push/notifications/NotificationFactory;
.source "DefaultNotificationFactory.java"


# instance fields
.field private accentColor:I

.field private constantNotificationId:I

.field private largeIcon:I

.field private smallIconId:I

.field private sound:Landroid/net/Uri;

.field private titleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    .line 59
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 3
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 69
    :goto_0
    return-object v1

    .line 68
    :cond_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 69
    .local v0, "defaultStyle":Landroid/support/v4/app/NotificationCompat$Style;
    invoke-virtual {p0, p1, p2, v0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationBuilder(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_0
.end method

.method protected createNotificationBuilder(Lcom/urbanairship/push/PushMessage;ILandroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I
    .param p3, "defaultStyle"    # Landroid/support/v4/app/NotificationCompat$Style;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getDefaultTitle()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "title":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget v7, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget v7, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPriority()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 104
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget v6, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    invoke-virtual {p0, p1, v6}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v3

    .line 105
    .local v3, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    :cond_0
    const/4 v1, 0x3

    .line 111
    .local v1, "defaults":I
    iget-object v6, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    and-int/lit8 v1, v1, -0x2

    .line 118
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    iget v6, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    if-lez v6, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSummary()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 125
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 128
    :cond_3
    const/4 v4, 0x0

    .line 130
    .local v4, "style":Landroid/support/v4/app/NotificationCompat$Style;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/NotificationCompat$Style;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 135
    :goto_1
    if-eqz v4, :cond_7

    .line 136
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v6

    if-nez v6, :cond_5

    .line 143
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Extender;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 151
    return-object v0

    .line 90
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v1    # "defaults":I
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    .end local v5    # "title":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 131
    .restart local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v1    # "defaults":I
    .restart local v3    # "notification":Landroid/app/Notification;
    .restart local v4    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    .restart local v5    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Failed to create notification style."

    invoke-static {v6, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 137
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz p3, :cond_4

    .line 138
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 144
    :catch_1
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "Failed to create wearable extender."

    invoke-static {v6, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    return v0
.end method

.method public getConstantNotificationId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    return v0
.end method

.method protected getDefaultTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLargeIcon()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    return v0
.end method

.method public getNextId(Lcom/urbanairship/push/PushMessage;)I
    .locals 1
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 74
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    if-lez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    goto :goto_0
.end method

.method public getSmallIconId()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    return v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "accentColor"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->accentColor:I

    .line 255
    return-void
.end method

.method public setConstantNotificationId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->constantNotificationId:I

    .line 163
    return-void
.end method

.method public setLargeIcon(I)V
    .locals 0
    .param p1, "largeIcon"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->largeIcon:I

    .line 237
    return-void
.end method

.method public setSmallIconId(I)V
    .locals 0
    .param p1, "smallIconId"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->smallIconId:I

    .line 201
    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->sound:Landroid/net/Uri;

    .line 219
    return-void
.end method

.method public setTitleId(I)V
    .locals 0
    .param p1, "titleId"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;->titleId:I

    .line 183
    return-void
.end method
