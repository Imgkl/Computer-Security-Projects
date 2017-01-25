.class public Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;
.super Lcom/urbanairship/push/notifications/NotificationFactory;
.source "CustomLayoutNotificationFactory.java"


# instance fields
.field public constantNotificationId:I

.field public layout:I

.field public layoutIconDrawableId:I

.field public layoutIconId:I

.field public layoutMessageId:I

.field public layoutSubjectId:I

.field public soundUri:Landroid/net/Uri;

.field public statusBarIconDrawableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconDrawableId:I

    .line 232
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->statusBarIconDrawableId:I

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    .line 260
    return-void
.end method


# virtual methods
.method public createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 10
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getAlert()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "alert":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 267
    :cond_0
    const/4 v5, 0x0

    .line 335
    :goto_0
    return-object v5

    .line 271
    :cond_1
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layout:I

    invoke-direct {v2, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 272
    .local v2, "contentView":Landroid/widget/RemoteViews;
    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    if-nez v8, :cond_3

    .line 273
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The CustomLayoutNotificationFactory object contains an invalid identifier (value of 0). layoutIconId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " layoutSubjectId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " layoutMessageId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 275
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unable to build notification. CustomLayoutNotificationFactory missing required parameter."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :cond_3
    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutSubjectId:I

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutMessageId:I

    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 280
    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconDrawableId:I

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 282
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    iget v9, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->statusBarIconDrawableId:I

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPriority()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getVisibility()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 292
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->layoutIconId:I

    invoke-virtual {p0, p1, v8}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;

    move-result-object v6

    .line 293
    .local v6, "publicNotification":Landroid/app/Notification;
    if-eqz v6, :cond_4

    .line 294
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 298
    :cond_4
    const/4 v3, 0x3

    .line 300
    .local v3, "defaults":I
    iget-object v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->soundUri:Landroid/net/Uri;

    if-eqz v8, :cond_5

    .line 301
    iget-object v8, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->soundUri:Landroid/net/Uri;

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 304
    and-int/lit8 v3, v3, -0x2

    .line 307
    :cond_5
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 310
    const/4 v7, 0x0

    .line 312
    .local v7, "style":Landroid/support/v4/app/NotificationCompat$Style;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/NotificationCompat$Style;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 317
    :goto_2
    if-eqz v7, :cond_6

    .line 318
    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 321
    :cond_6
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isLocalOnly()Z

    move-result v8

    if-nez v8, :cond_7

    .line 323
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Extender;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 331
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 333
    .local v5, "notification":Landroid/app/Notification;
    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 278
    .end local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "defaults":I
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "publicNotification":Landroid/app/Notification;
    .end local v7    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    :cond_8
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 313
    .restart local v1    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v3    # "defaults":I
    .restart local v6    # "publicNotification":Landroid/app/Notification;
    .restart local v7    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "Failed to create notification style."

    invoke-static {v8, v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 324
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 325
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "Failed to create wearable extender."

    invoke-static {v8, v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getNextId(Lcom/urbanairship/push/PushMessage;)I
    .locals 1
    .param p1, "pushMessage"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 340
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    if-lez v0, :cond_0

    .line 341
    iget v0, p0, Lcom/urbanairship/push/notifications/CustomLayoutNotificationFactory;->constantNotificationId:I

    .line 343
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/util/NotificationIDGenerator;->nextID()I

    move-result v0

    goto :goto_0
.end method
