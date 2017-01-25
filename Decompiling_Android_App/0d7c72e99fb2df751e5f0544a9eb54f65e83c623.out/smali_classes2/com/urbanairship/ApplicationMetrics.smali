.class public Lcom/urbanairship/ApplicationMetrics;
.super Ljava/lang/Object;
.source "ApplicationMetrics.java"


# static fields
.field private static final LAST_OPEN_KEY:Ljava/lang/String; = "com.urbanairship.application.metrics.LAST_OPEN"


# instance fields
.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 46
    invoke-direct {p0, p1}, Lcom/urbanairship/ApplicationMetrics;->registerBroadcastReceivers(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/ApplicationMetrics;)Lcom/urbanairship/PreferenceDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/ApplicationMetrics;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    return-object v0
.end method

.method private registerBroadcastReceivers(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 55
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v2, Lcom/urbanairship/ApplicationMetrics$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/ApplicationMetrics$1;-><init>(Lcom/urbanairship/ApplicationMetrics;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getLastOpenTimeMillis()J
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
