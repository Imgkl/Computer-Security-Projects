.class public abstract Lcom/urbanairship/push/notifications/NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationFactory.java"


# static fields
.field static final ALERT_KEY:Ljava/lang/String; = "alert"

.field static final BACKGROUND_IMAGE_KEY:Ljava/lang/String; = "background_image"

.field private static final BIG_IMAGE_HEIGHT_DP:I = 0xf0

.field private static final BIG_IMAGE_SCREEN_WIDTH_PERCENT:D = 0.75

.field static final BIG_PICTURE_KEY:Ljava/lang/String; = "big_picture"

.field static final BIG_TEXT_KEY:Ljava/lang/String; = "big_text"

.field static final EXTRA_PAGES_KEY:Ljava/lang/String; = "extra_pages"

.field static final INBOX_KEY:Ljava/lang/String; = "inbox"

.field static final INTERACTIVE_ACTIONS_KEY:Ljava/lang/String; = "interactive_actions"

.field static final INTERACTIVE_TYPE_KEY:Ljava/lang/String; = "interactive_type"

.field static final LINES_KEY:Ljava/lang/String; = "lines"

.field static final NOTIFICATION_DEFAULTS:I = 0x3

.field static final SUMMARY_KEY:Ljava/lang/String; = "summary"

.field static final TITLE_KEY:Ljava/lang/String; = "title"

.field static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private createBigPictureStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 6
    .param p1, "styleJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 303
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    const-string v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "title":Ljava/lang/String;
    const-string v5, "summary"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "summary":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "big_picture"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, "url":Ljava/net/URL;
    invoke-direct {p0, v4}, Lcom/urbanairship/push/notifications/NotificationFactory;->fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 315
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 318
    :cond_0
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 322
    .end local v1    # "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .end local v4    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-object v1

    .line 309
    .restart local v1    # "style":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v5, "Malformed big picture URL."

    invoke-static {v5, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createBigTextStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 5
    .param p1, "styleJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 275
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "title":Ljava/lang/String;
    const-string v4, "summary"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "summary":Ljava/lang/String;
    const-string v4, "big_text"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "bigText":Ljava/lang/String;
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 283
    :cond_0
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 287
    :cond_1
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 291
    :cond_2
    return-object v1
.end method

.method private createInboxStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .locals 7
    .param p1, "styleJSON"    # Lorg/json/JSONObject;

    .prologue
    .line 331
    new-instance v3, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 333
    .local v3, "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const-string v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "title":Ljava/lang/String;
    const-string v6, "summary"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "summary":Ljava/lang/String;
    const-string v6, "lines"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 337
    .local v2, "lines":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 339
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 350
    :cond_2
    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 351
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 354
    :cond_3
    return-object v3
.end method

.method private createWearPage(Lorg/json/JSONObject;)Landroid/app/Notification;
    .locals 5
    .param p1, "page"    # Lorg/json/JSONObject;

    .prologue
    .line 249
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 251
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 256
    :cond_0
    const-string v3, "alert"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "alert":Ljava/lang/String;
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 261
    :cond_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    const/4 v4, 0x0

    .line 411
    :goto_0
    return-object v4

    .line 400
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetching notification image at URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 402
    .local v3, "window":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 403
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 406
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 409
    .local v2, "reqWidth":I
    const/4 v4, 0x1

    const/high16 v5, 0x43700000    # 240.0f

    invoke-static {v4, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 411
    .local v1, "reqHeight":I
    iget-object v4, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    invoke-static {v4, p1, v2, v1}, Lcom/urbanairship/util/BitmapUtils;->fetchScaledBitmap(Landroid/content/Context;Ljava/net/URL;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public abstract createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
.end method

.method protected final createNotificationActionsExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$Extender;
    .locals 4
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I

    .prologue
    .line 129
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveNotificationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v0

    .line 131
    .local v0, "actionGroup":Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "androidActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveActionsPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, p2, v3}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->createAndroidActions(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_0
    new-instance v2, Lcom/urbanairship/push/notifications/NotificationFactory$1;

    invoke-direct {v2, p0, v1}, Lcom/urbanairship/push/notifications/NotificationFactory$1;-><init>(Lcom/urbanairship/push/notifications/NotificationFactory;Ljava/util/List;)V

    return-object v2
.end method

.method protected final createNotificationStyle(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 7
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getStylePayload()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "stylePayload":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 240
    :goto_0
    return-object v4

    .line 223
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v1, "styleJSON":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "type":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/urbanairship/push/notifications/NotificationFactory;->createBigTextStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$Style;

    move-result-object v4

    goto :goto_0

    .line 224
    .end local v1    # "styleJSON":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "Failed to parse notification style payload."

    invoke-static {v5, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "styleJSON":Lorg/json/JSONObject;
    .restart local v3    # "type":Ljava/lang/String;
    :sswitch_0
    const-string v6, "big_text"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "inbox"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "big_picture"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    .line 235
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/urbanairship/push/notifications/NotificationFactory;->createInboxStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v4

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/urbanairship/push/notifications/NotificationFactory;->createBigPictureStyle(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x5fb2286 -> :sswitch_1
        0x2bd5a10c -> :sswitch_0
        0x435480bf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final createPublicVersionNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 5
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationIcon"    # I

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPublicNotificationPayload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getPublicNotificationPayload()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "alert"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 375
    .local v2, "publicBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v3, "summary"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    const-string v3, "summary"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 378
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 384
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "publicBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    return-object v3

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Failed to parse public notification."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected final createWearableExtender(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 17
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v9, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 160
    .local v9, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-virtual/range {p1 .. p1}, Lcom/urbanairship/push/PushMessage;->getWearablePayload()Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "wearablePayload":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v9

    .line 167
    :cond_1
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v13, "wearableJSON":Lorg/json/JSONObject;
    const-string v15, "interactive_type"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "actionGroupId":Ljava/lang/String;
    const-string v15, "interactive_actions"

    invoke-virtual/range {p1 .. p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveActionsPayload()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "actionsPayload":Ljava/lang/String;
    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 176
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v15

    invoke-virtual {v15}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/urbanairship/push/PushManager;->getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    move-result-object v2

    .line 178
    .local v2, "actionGroup":Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/urbanairship/push/notifications/NotificationFactory;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v15, v0, v1, v4}, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;->createAndroidActions(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 180
    .local v5, "androidActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    invoke-virtual {v9, v5}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 184
    .end local v2    # "actionGroup":Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .end local v5    # "androidActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :cond_2
    const-string v15, "background_image"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "backgroundUrl":Ljava/lang/String;
    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 187
    :try_start_1
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/urbanairship/push/notifications/NotificationFactory;->fetchBigImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 188
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v9, v7}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    const-string v15, "extra_pages"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 195
    .local v12, "pages":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    .line 196
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v10, v15, :cond_0

    .line 197
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 198
    .local v11, "page":Lorg/json/JSONObject;
    if-nez v11, :cond_4

    .line 196
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 168
    .end local v3    # "actionGroupId":Ljava/lang/String;
    .end local v4    # "actionsPayload":Ljava/lang/String;
    .end local v6    # "backgroundUrl":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "page":Lorg/json/JSONObject;
    .end local v12    # "pages":Lorg/json/JSONArray;
    .end local v13    # "wearableJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 169
    .local v8, "e":Lorg/json/JSONException;
    const-string v15, "Failed to parse wearable payload."

    invoke-static {v15, v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "actionGroupId":Ljava/lang/String;
    .restart local v4    # "actionsPayload":Ljava/lang/String;
    .restart local v6    # "backgroundUrl":Ljava/lang/String;
    .restart local v13    # "wearableJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 190
    .local v8, "e":Ljava/net/MalformedURLException;
    const-string v15, "Wearable background url is malformed."

    invoke-static {v15, v8}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 202
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .restart local v10    # "i":I
    .restart local v11    # "page":Lorg/json/JSONObject;
    .restart local v12    # "pages":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/urbanairship/push/notifications/NotificationFactory;->createWearPage(Lorg/json/JSONObject;)Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    goto :goto_3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/push/notifications/NotificationFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getNextId(Lcom/urbanairship/push/PushMessage;)I
.end method
