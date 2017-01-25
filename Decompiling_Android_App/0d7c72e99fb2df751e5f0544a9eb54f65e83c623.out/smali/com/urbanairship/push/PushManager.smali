.class public Lcom/urbanairship/push/PushManager;
.super Lcom/urbanairship/BaseManager;
.source "PushManager.java"


# static fields
.field public static final ACTION_CHANNEL_UPDATED:Ljava/lang/String; = "com.urbanairship.push.CHANNEL_UPDATED"

.field public static final ACTION_NOTIFICATION_BUTTON_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"

.field public static final ACTION_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.urbanairship.push.DISMISSED"

.field public static final ACTION_NOTIFICATION_DISMISSED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String; = "com.urbanairship.push.OPENED"

.field public static final ACTION_NOTIFICATION_OPENED_PROXY:Ljava/lang/String; = "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

.field public static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.urbanairship.push.RECEIVED"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_CHANNEL_ID"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "com.urbanairship.push.EXTRA_ERROR"

.field public static final EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION"

.field public static final EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD"

.field public static final EXTRA_NOTIFICATION_BUTTON_FOREGROUND:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND"

.field public static final EXTRA_NOTIFICATION_BUTTON_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"

.field public static final EXTRA_NOTIFICATION_CONTENT_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

.field public static final EXTRA_NOTIFICATION_DELETE_INTENT:Ljava/lang/String; = "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "com.urbanairship.push.NOTIFICATION_ID"

.field public static final EXTRA_PUSH_MESSAGE:Ljava/lang/String; = "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

.field private static final MAX_CANONICAL_IDS:I = 0xa

.field private static final MAX_TAG_LENGTH:I = 0x7f

.field private static final RICH_PUSH_REFRESH_WAIT_TIME_MS:I = 0xea60


# instance fields
.field private UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

.field private actionGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;",
            ">;"
        }
    .end annotation
.end field

.field private deviceTagsEnabled:Z

.field private namedUser:Lcom/urbanairship/push/NamedUser;

.field private notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

.field notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field preferences:Lcom/urbanairship/push/PushPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 214
    new-instance v0, Lcom/urbanairship/push/PushPreferences;

    invoke-direct {v0, p2}, Lcom/urbanairship/push/PushPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    new-instance v1, Lcom/urbanairship/push/NamedUser;

    invoke-direct {v1, p2}, Lcom/urbanairship/push/NamedUser;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/push/PushPreferences;Lcom/urbanairship/push/NamedUser;Landroid/support/v4/app/NotificationManagerCompat;)V

    .line 215
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/push/PushPreferences;Lcom/urbanairship/push/NamedUser;Landroid/support/v4/app/NotificationManagerCompat;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/urbanairship/push/PushPreferences;
    .param p3, "namedUser"    # Lcom/urbanairship/push/NamedUser;
    .param p4, "notificationManager"    # Landroid/support/v4/app/NotificationManagerCompat;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 194
    const-string/jumbo v0, "ua_"

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    .line 218
    iput-object p4, p0, Lcom/urbanairship/push/PushManager;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 219
    iput-object p2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    .line 220
    new-instance v0, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;

    invoke-direct {v0, p1}, Lcom/urbanairship/push/notifications/DefaultNotificationFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 221
    iput-object p3, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    .line 223
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Channel ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-static {}, Lcom/urbanairship/push/NotificationActionButtonGroupFactory;->createUrbanAirshipGroups()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method private static createPushArrivedEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "sendId"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 731
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/analytics/PushArrivedEvent;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/PushArrivedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 732
    return-void
.end method

.method static getSecureId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isUniqueCanonicalId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "canonicalId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 743
    if-nez p1, :cond_0

    .line 762
    :goto_0
    return v2

    .line 748
    :cond_0
    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getCanonicalIds()Ljava/util/List;

    move-result-object v0

    .line 750
    .local v0, "canonicalIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 751
    const/4 v2, 0x0

    goto :goto_0

    .line 754
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 756
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 757
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3, v1}, Lcom/urbanairship/push/PushPreferences;->setCanonicalIds(Ljava/util/List;)V

    goto :goto_0

    .line 759
    .end local v1    # "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3, v0}, Lcom/urbanairship/push/PushPreferences;->setCanonicalIds(Ljava/util/List;)V

    goto :goto_0
.end method

.method private normalizeTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 493
    const/4 v1, 0x0

    .line 513
    :cond_0
    return-object v1

    .line 496
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 498
    .local v1, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 500
    const-string v3, "PushManager - Null tag was removed from set."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_4

    .line 506
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag with zero or greater than max length was removed from set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private refreshRichPushMessages()V
    .locals 5

    .prologue
    .line 902
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 903
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v2

    new-instance v3, Lcom/urbanairship/push/PushManager$1;

    invoke-direct {v3, p0, v1}, Lcom/urbanairship/push/PushManager$1;-><init>(Lcom/urbanairship/push/PushManager;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 911
    const-wide/32 v2, 0xea60

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Interrupted while waiting for rich push messages to refresh"

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendPushReceivedBroadcast(Lcom/urbanairship/push/PushMessage;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "notificationId"    # Ljava/lang/Integer;

    .prologue
    .line 773
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 778
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 779
    const-string v1, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method private show(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/notifications/NotificationFactory;)Ljava/lang/Integer;
    .locals 9
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "builder"    # Lcom/urbanairship/push/notifications/NotificationFactory;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 925
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v5, v6

    .line 984
    :goto_0
    return-object v5

    .line 931
    :cond_1
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 934
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/urbanairship/push/notifications/NotificationFactory;->getNextId(Lcom/urbanairship/push/PushMessage;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 935
    .local v5, "notificationId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p2, p1, v7}, Lcom/urbanairship/push/notifications/NotificationFactory;->createNotification(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 941
    .local v4, "notification":Landroid/app/Notification;
    if-eqz v4, :cond_8

    .line 942
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isVibrateEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isInQuietTime()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 944
    :cond_2
    iput-object v6, v4, Landroid/app/Notification;->vibrate:[J

    .line 945
    iget v7, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x3

    iput v7, v4, Landroid/app/Notification;->defaults:I

    .line 948
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isSoundEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isInQuietTime()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 950
    :cond_4
    iput-object v6, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 951
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v4, Landroid/app/Notification;->defaults:I

    .line 954
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 961
    .local v0, "contentIntent":Landroid/content/Intent;
    iget-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_6

    .line 962
    const-string v6, "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT"

    iget-object v7, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 965
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/urbanairship/CoreReceiver;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.urbanairship.push.EXTRA_PUSH_MESSAGE"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.urbanairship.push.NOTIFICATION_ID"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    .line 971
    .local v2, "deleteIntent":Landroid/content/Intent;
    iget-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_7

    .line 972
    const-string v6, "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT"

    iget-object v7, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 975
    :cond_7
    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 976
    invoke-static {v1, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Posting notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 979
    iget-object v6, p0, Lcom/urbanairship/push/PushManager;->notificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 936
    .end local v0    # "contentIntent":Landroid/content/Intent;
    .end local v2    # "deleteIntent":Landroid/content/Intent;
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationId":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 937
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Unable to create and display notification."

    invoke-static {v7, v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 938
    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "notification":Landroid/app/Notification;
    .restart local v5    # "notificationId":Ljava/lang/Integer;
    :cond_8
    move-object v5, v6

    .line 984
    goto/16 :goto_0
.end method


# virtual methods
.method public addNotificationActionButtonGroup(Ljava/lang/String;Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "group"    # Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add any notification button groups that starts with the reserved Urban Airship prefix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method deliverPush(Lcom/urbanairship/push/PushMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 813
    const-string v2, "Received a push when push is disabled! Ignoring."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void

    .line 817
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/urbanairship/push/PushManager;->isUniqueCanonicalId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a duplicate push with canonical ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getCanonicalPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushPreferences;->setLastReceivedSendId(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/push/PushManager;->createPushArrivedEvent(Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getActionsPayload()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/urbanairship/actions/Situation;->PUSH_RECEIVED:Lcom/urbanairship/actions/Situation;

    invoke-static {v2, v3, v4, p1}, Lcom/urbanairship/actions/ActionService;->runActionsPayload(Landroid/content/Context;Ljava/lang/String;Lcom/urbanairship/actions/Situation;Lcom/urbanairship/push/PushMessage;)V

    .line 828
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isPing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    const-string v2, "PushManager - Received UA Ping"

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 834
    const-string v2, "PushManager - Notification expired, ignoring."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_3
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInAppMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    .line 839
    .local v1, "inAppMessage":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v1, :cond_4

    .line 840
    const-string v2, "PushManager - Received a Push with an in-app message."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 844
    :cond_4
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getRichPushMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 845
    const-string v2, "PushManager - Received a Rich Push."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 846
    invoke-direct {p0}, Lcom/urbanairship/push/PushManager;->refreshRichPushMessages()V

    .line 849
    :cond_5
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getNotificationFactory()Lcom/urbanairship/push/notifications/NotificationFactory;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/urbanairship/push/PushManager;->show(Lcom/urbanairship/push/PushMessage;Lcom/urbanairship/push/notifications/NotificationFactory;)Ljava/lang/Integer;

    move-result-object v0

    .line 850
    .local v0, "id":Ljava/lang/Integer;
    invoke-direct {p0, p1, v0}, Lcom/urbanairship/push/PushManager;->sendPushReceivedBroadcast(Lcom/urbanairship/push/PushMessage;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method public getAdmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTagsEnabled()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    return v0
.end method

.method public getGcmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastReceivedSendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getLastReceivedSendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamedUser()Lcom/urbanairship/push/NamedUser;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    return-object v0
.end method

.method getNextChannelRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;
    .locals 4

    .prologue
    .line 402
    new-instance v1, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    invoke-direct {v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setAlias(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getDeviceTagsEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setTags(ZLjava/util/Set;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isOptIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setOptIn(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setBackgroundEnabled(Z)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setUserId(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getApid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setApid(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v0

    .line 410
    .local v0, "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 421
    :goto_1
    invoke-virtual {v0}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->build()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v1

    return-object v1

    .line 402
    .end local v0    # "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 412
    .restart local v0    # "builder":Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;
    :pswitch_0
    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_1

    .line 416
    :pswitch_1
    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setDeviceType(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;->setPushAddress(Ljava/lang/String;)Lcom/urbanairship/push/ChannelRegistrationPayload$Builder;

    goto :goto_1

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNotificationActionGroup(Ljava/lang/String;)Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/notifications/NotificationActionButtonGroup;

    return-object v0
.end method

.method public getNotificationFactory()Lcom/urbanairship/push/notifications/NotificationFactory;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    return-object v0
.end method

.method getPreferences()Lcom/urbanairship/push/PushPreferences;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    return-object v0
.end method

.method public getQuietTimeInterval()[Ljava/util/Date;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v1

    .line 543
    .local v1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/urbanairship/push/PushManager;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 546
    .local v0, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 547
    invoke-virtual {p0, v0}, Lcom/urbanairship/push/PushManager;->setTags(Ljava/util/Set;)V

    .line 549
    :cond_0
    return-object v0
.end method

.method public getUserNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getUserNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->migratePushEnabledSettings()V

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->namedUser:Lcom/urbanairship/push/NamedUser;

    invoke-virtual {v1}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 242
    return-void
.end method

.method public isInQuietTime()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isInQuietTime()Z

    move-result v0

    return v0
.end method

.method public isOptIn()Z
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->isPushAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getUserNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPushAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 380
    :pswitch_0
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPushEnabled()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v0

    return v0
.end method

.method public isQuietTimeEnabled()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public isVibrateEnabled()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isVibrateEnabled()Z

    move-result v0

    return v0
.end method

.method public removeNotificationActionButtonGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to remove any reserved Urban Airship actions groups that begin with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->UA_NOTIFICATION_BUTTON_GROUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->actionGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method sendRegistrationFinishedBroadcast(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 792
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.push.CHANNEL_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.urbanairship.push.EXTRA_CHANNEL_ID"

    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 797
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 798
    const-string v1, "com.urbanairship.push.EXTRA_ERROR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getUrbanAirshipPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method setAdmId(Ljava/lang/String;)V
    .locals 2
    .param p1, "admId"    # Ljava/lang/String;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setAppVersionCode(I)V

    .line 894
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAdmId(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setDeviceId(Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 453
    :cond_0
    return-void
.end method

.method public setAliasAndTags(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tags must be non-null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_0
    invoke-direct {p0, p2}, Lcom/urbanairship/push/PushManager;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 352
    .local v0, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 355
    .local v1, "updateServer":Z
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2, p1}, Lcom/urbanairship/push/PushPreferences;->setAlias(Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x1

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2, v0}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    .line 363
    const/4 v1, 0x1

    .line 366
    :cond_2
    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 369
    :cond_3
    return-void
.end method

.method setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelLocation"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setChannelId(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/PushPreferences;->setChannelLocation(Ljava/lang/String;)V

    .line 873
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser()V

    .line 874
    return-void
.end method

.method public setDeviceTagsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/urbanairship/push/PushManager;->deviceTagsEnabled:Z

    .line 589
    return-void
.end method

.method setGcmId(Ljava/lang/String;)V
    .locals 2
    .param p1, "gcmId"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setAppVersionCode(I)V

    .line 883
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setGcmId(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setDeviceId(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method public setNotificationFactory(Lcom/urbanairship/push/notifications/NotificationFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/urbanairship/push/notifications/NotificationFactory;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/urbanairship/push/PushManager;->notificationFactory:Lcom/urbanairship/push/notifications/NotificationFactory;

    .line 311
    return-void
.end method

.method public setPushEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 255
    return-void
.end method

.method public setQuietTimeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 642
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeEnabled(Z)V

    .line 643
    return-void
.end method

.method public setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "startTime"    # Ljava/util/Date;
    .param p2, "endTime"    # Ljava/util/Date;

    .prologue
    .line 680
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/push/PushPreferences;->setQuietTimeInterval(Ljava/util/Date;Ljava/util/Date;)V

    .line 681
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)V

    .line 607
    return-void
.end method

.method public setTags(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tags must be non-null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushManager;->normalizeTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 478
    .local v0, "normalizedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->setTags(Ljava/util/Set;)V

    .line 480
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 482
    :cond_1
    return-void
.end method

.method public setUserNotificationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setUserNotificationsEnabled(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/urbanairship/push/PushManager;->updateRegistration()V

    .line 281
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/urbanairship/push/PushManager;->preferences:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)V

    .line 625
    return-void
.end method

.method public updateRegistration()V
    .locals 3

    .prologue
    .line 429
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 433
    return-void
.end method
