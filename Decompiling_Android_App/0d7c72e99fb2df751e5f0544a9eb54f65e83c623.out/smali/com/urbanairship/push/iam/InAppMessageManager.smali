.class public Lcom/urbanairship/push/iam/InAppMessageManager;
.super Lcom/urbanairship/BaseManager;
.source "InAppMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_DISPLAY_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

.field private static BACKGROUND_DELAY_MS:J = 0x0L

.field private static DEFAULT_ACTIVITY_RESUME_DELAY_MS:J = 0x0L

.field private static final DISPLAY_ASAP_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.DISPLAY_ASAP"

.field public static final EXCLUDE_FROM_AUTO_SHOW:Ljava/lang/String; = "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

.field private static final IN_APP_TAG:Ljava/lang/String; = "com.urbanairship.in_app_fragment"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.push.iam."

.field private static final LAST_DISPLAYED_ID_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

.field private static final PENDING_IN_APP_MESSAGE_KEY:Ljava/lang/String; = "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

.field private static activityCount:I

.field private static activityResumedOperation:Lcom/urbanairship/Cancelable;

.field private static isForeground:Z

.field private static lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private autoDisplayDelayMs:J

.field private autoDisplayPendingMessage:Z

.field private currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

.field private currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

.field private final dataStore:Lcom/urbanairship/PreferenceDataStore;

.field private final displayRunnable:Ljava/lang/Runnable;

.field private fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

.field private final fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

.field private final handler:Landroid/os/Handler;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessageManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingMessageLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/urbanairship/push/iam/InAppMessageManager;->DEFAULT_ACTIVITY_RESUME_DELAY_MS:J

    .line 99
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/urbanairship/push/iam/InAppMessageManager;->BACKGROUND_DELAY_MS:J

    .line 104
    sput v2, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    .line 105
    sput-boolean v2, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2
    .param p1, "dataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$1;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    .line 573
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$4;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$4;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    .line 141
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 142
    sget-wide v0, Lcom/urbanairship/push/iam/InAppMessageManager;->DEFAULT_ACTIVITY_RESUME_DELAY_MS:J

    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    .line 144
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$2;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/iam/InAppMessageManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;
    .param p1, "x1"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object p1
.end method

.method static synthetic access$500(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessageManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method static synthetic access$608()I
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/urbanairship/push/iam/InAppMessageManager;->activityCount:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/urbanairship/push/iam/InAppMessageManager;->isForeground:Z

    return p0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 55
    sget-wide v0, Lcom/urbanairship/push/iam/InAppMessageManager;->BACKGROUND_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$900()Lcom/urbanairship/Cancelable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/urbanairship/Cancelable;)Lcom/urbanairship/Cancelable;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/Cancelable;

    .prologue
    .line 55
    sput-object p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityResumedOperation:Lcom/urbanairship/Cancelable;

    return-object p0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public static registerLifeCycleCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 639
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager$5;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/iam/InAppMessageManager$5;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    .line 697
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->register()V

    .line 699
    :cond_0
    return-void
.end method

.method public static unregisterLifeCycleCallbacks()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 708
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcom/urbanairship/push/iam/InAppMessageManager;->lifeCycleCallbacks:Lcom/urbanairship/LifeCycleCallbacks;

    invoke-virtual {v0}, Lcom/urbanairship/LifeCycleCallbacks;->unregister()V

    .line 711
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v1

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoDisplayDelay()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    return-wide v0
.end method

.method public getCurrentMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method public getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    return-object v0
.end method

.method public getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 284
    :try_start_0
    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v5, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 285
    .local v1, "payload":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 287
    :try_start_1
    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessage;->parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    :try_end_1
    .catch Lcom/urbanairship/json/JsonException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    monitor-exit v3

    .line 294
    :goto_0
    return-object v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppMessageManager - Failed to read pending in-app message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 294
    .end local v0    # "e":Lcom/urbanairship/json/JsonException;
    :cond_0
    monitor-exit v3

    goto :goto_0

    .line 295
    .end local v1    # "payload":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 159
    .local v0, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const-string v2, "InAppMessageManager - pending in-app message expired."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 161
    invoke-static {v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 162
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 163
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 165
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_0
    return-void
.end method

.method public isAutoDisplayEnabled()Z
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDisplayAsapEnabled()Z
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.DISPLAY_ASAP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Activity paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 548
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppMessageManager - Activity resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->getActivityInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 560
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    const-string v1, "InAppMessageManager - Activity contains metadata to exclude it from auto showing an in-app message"

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->activityReference:Ljava/lang/ref/WeakReference;

    .line 566
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    iget-boolean v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onForeground()V
    .locals 6

    .prologue
    .line 523
    const-string v2, "InAppMessageManager - App foregrounded."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 525
    .local v0, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0, v2}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 530
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 533
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 534
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 535
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 536
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    :cond_3
    return-void
.end method

.method public removeListener(Lcom/urbanairship/push/iam/InAppMessageManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 487
    monitor-exit v1

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoDisplayDelay(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayDelayMs:J

    .line 174
    return-void
.end method

.method public setAutoDisplayEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public setDisplayAsapEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.push.iam.DISPLAY_ASAP"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 199
    :cond_0
    return-void
.end method

.method public setFragmentFactory(Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentFactory:Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    .line 498
    return-void
.end method

.method public setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 237
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 238
    if-nez p1, :cond_1

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {v2, v4}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    monitor-exit v3

    .line 275
    :goto_1
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 242
    .local v0, "previous":Lcom/urbanairship/push/iam/InAppMessage;
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    monitor-exit v3

    goto :goto_1

    .line 274
    .end local v0    # "previous":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    .restart local v0    # "previous":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/urbanairship/push/iam/InAppMessageManager$3;

    invoke-direct {v4, p0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager$3;-><init>(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE"

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 261
    const-string v2, "InAppMessageManager - pending in-app message replaced."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 262
    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v1

    .line 263
    .local v1, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 266
    .end local v1    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_3
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->autoDisplayPendingMessage:Z

    .line 268
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->displayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public showPendingMessage(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 317
    const v0, 0x1020002

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method public showPendingMessage(Landroid/app/Activity;I)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerId"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 331
    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v4

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v2

    .line 334
    .local v2, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    .line 335
    :cond_0
    const/4 v3, 0x0

    monitor-exit v4

    .line 347
    :goto_0
    return v3

    .line 339
    :cond_1
    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->getPosition()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 340
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_in_top:I

    .line 341
    .local v0, "enter":I
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_out_top:I

    .line 347
    .local v1, "exit":I
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;III)Z

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 348
    .end local v0    # "enter":I
    .end local v1    # "exit":I
    .end local v2    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 343
    .restart local v2    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_2
    :try_start_1
    sget v0, Lcom/urbanairship/R$animator;->ua_iam_slide_in_bottom:I

    .line 344
    .restart local v0    # "enter":I
    sget v1, Lcom/urbanairship/R$animator;->ua_iam_slide_out_bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "exit":I
    goto :goto_1
.end method

.method public showPendingMessage(Landroid/app/Activity;III)Z
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "containerId"    # I
    .param p3, "enterAnimation"    # I
    .param p4, "exitAnimation"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 371
    iget-object v10, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->pendingMessageLock:Ljava/lang/Object;

    monitor-enter v10

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v7

    .line 374
    .local v7, "pending":Lcom/urbanairship/push/iam/InAppMessage;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage;->isExpired()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 375
    const-string v9, "InAppMessageManager - Unable to display pending in-app message. Message has expired."

    invoke-static {v9}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 376
    invoke-static {v7}, Lcom/urbanairship/push/iam/ResolutionEvent;->createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v8

    .line 377
    .local v8, "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 378
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 379
    const/4 v9, 0x0

    monitor-exit v10

    .line 461
    .end local v8    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :goto_0
    return v9

    .line 381
    :cond_0
    monitor-exit v10

    .line 383
    if-eqz p1, :cond_1

    if-nez v7, :cond_2

    .line 384
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 381
    .end local v7    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 387
    .restart local v7    # "pending":Lcom/urbanairship/push/iam/InAppMessage;
    :cond_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-ge v9, v10, :cond_3

    .line 388
    const-string v9, "InAppMessageManager - Unable to show in-app messages on Android versions older than API 14 (Ice Cream Sandwich)."

    invoke-static {v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 389
    const/4 v9, 0x0

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 393
    const-string v9, "InAppMessageManager - Unable to display in-app messages for an activity that is finishing."

    invoke-static {v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 394
    const/4 v9, 0x0

    goto :goto_0

    .line 397
    :cond_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    if-eq v9, v10, :cond_5

    .line 398
    const-string v9, "InAppMessageManager - Show message must be called on the main thread."

    invoke-static {v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 399
    const/4 v9, 0x0

    goto :goto_0

    .line 402
    :cond_5
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-eqz v9, :cond_6

    .line 403
    const-string v9, "InAppMessageManager - An in-app message is already displayed."

    invoke-static {v9}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 404
    const/4 v9, 0x0

    goto :goto_0

    .line 408
    :cond_6
    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v11, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 409
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InAppMessageManager - Displaying pending message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for first time."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 410
    new-instance v2, Lcom/urbanairship/push/iam/DisplayEvent;

    invoke-direct {v2, v7}, Lcom/urbanairship/push/iam/DisplayEvent;-><init>(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 411
    .local v2, "displayEvent":Lcom/urbanairship/push/iam/DisplayEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 412
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v10, "com.urbanairship.push.iam.LAST_DISPLAYED_ID"

    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    .end local v2    # "displayEvent":Lcom/urbanairship/push/iam/DisplayEvent;
    :cond_7
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v9, v7}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 417
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-static {v9, v7}, Lcom/urbanairship/push/iam/ResolutionEvent;->createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;

    move-result-object v8

    .line 418
    .restart local v8    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v9

    invoke-virtual {v9}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 421
    .end local v8    # "resolutionEvent":Lcom/urbanairship/push/iam/ResolutionEvent;
    :cond_8
    const-string v9, "InAppMessageManager - Displaying in-app message."

    invoke-static {v9}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 424
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->getFragmentFactory()Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;

    move-result-object v4

    .line 425
    .local v4, "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    if-nez v4, :cond_9

    .line 426
    const-string v9, "InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message."

    invoke-static {v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 427
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 430
    :cond_9
    invoke-virtual {v4, v7}, Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;->createFragment(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v9

    iput-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    .line 431
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    if-nez v9, :cond_a

    .line 432
    const-string v9, "InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message."

    invoke-static {v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 433
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 436
    :cond_a
    move/from16 v0, p4

    invoke-static {v7, v0}, Lcom/urbanairship/push/iam/InAppMessageFragment;->createArgs(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;

    move-result-object v1

    .line 437
    .local v1, "args":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v9}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 438
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v9}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 441
    :cond_b
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-virtual {v9, v1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 443
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    iget-object v10, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->fragmentListener:Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/iam/InAppMessageFragment;->addListener(Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;)V

    .line 444
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/urbanairship/push/iam/InAppMessageFragment;->setDismissOnRecreate(Z)V

    .line 445
    iput-object v7, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentMessage:Lcom/urbanairship/push/iam/InAppMessage;

    .line 447
    iget-object v10, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    :try_start_2
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->listeners:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .line 449
    .local v6, "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    iget-object v9, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    invoke-interface {v6, v9, v7}, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;->onDisplay(Lcom/urbanairship/push/iam/InAppMessageFragment;Lcom/urbanairship/push/iam/InAppMessage;)V

    goto :goto_1

    .line 451
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 459
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v9, "InAppMessageManager - Failed to display in-app message."

    invoke-static {v9, v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 451
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v4    # "factory":Lcom/urbanairship/push/iam/InAppMessageFragmentFactory;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 453
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-virtual {v9, v0, v10}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v9

    iget-object v10, p0, Lcom/urbanairship/push/iam/InAppMessageManager;->currentFragment:Lcom/urbanairship/push/iam/InAppMessageFragment;

    const-string v11, "com.urbanairship.in_app_fragment"

    invoke-virtual {v9, p2, v10, v11}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .line 458
    const/4 v9, 0x1

    goto/16 :goto_0
.end method
