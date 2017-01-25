.class public Lcom/eventgenie/android/utils/help/appx/AppXWrapper;
.super Ljava/lang/Object;
.source "AppXWrapper.java"


# static fields
.field public static final APPX_BACKGROUND_UPPER_KEY:Ljava/lang/String; = "backgroundUpper"

.field private static sHasAttemptedToRegister:Z

.field private static sIsAttemptToRegistereSuccesful:Z

.field private static sLogsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sHasAttemptedToRegister:Z

    .line 16
    sput-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sIsAttemptToRegistereSuccesful:Z

    .line 17
    sput-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sLogsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPushDownToLayout(Landroid/content/Context;Lcom/julysystems/appx/AppXViewListner;Landroid/widget/LinearLayout;Ljava/lang/String;J)Lcom/julysystems/appx/AppXPushDown;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/julysystems/appx/AppXViewListner;
    .param p2, "targetView"    # Landroid/widget/LinearLayout;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "namespace"    # J

    .prologue
    .line 28
    invoke-static {p3, p4, p5}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->getNamespacedTag(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "actualTag":Ljava/lang/String;
    const-string v3, "^ APPX: About to add a view to a layout - Tag = \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->validateAppXAction()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    new-instance v1, Lcom/julysystems/appx/AppXPushDown;

    invoke-direct {v1, p0, v0}, Lcom/julysystems/appx/AppXPushDown;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .local v1, "appXPushDown":Lcom/julysystems/appx/AppXPushDown;
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {v1, p1}, Lcom/julysystems/appx/AppXPushDown;->setAppXViewListner(Lcom/julysystems/appx/AppXViewListner;)V

    .line 40
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .end local v1    # "appXPushDown":Lcom/julysystems/appx/AppXPushDown;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static enableLogs()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sLogsEnabled:Z

    .line 55
    sput-boolean v0, Lcom/julysystems/appx/AppX;->enableLogs:Z

    .line 56
    return-void
.end method

.method private static getNamespacedTag(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "namespace"    # J

    .prologue
    .line 67
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    .end local p0    # "tag":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static loadAppXFullPage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "namespace"    # J

    .prologue
    .line 80
    invoke-static {p1, p2, p3}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->getNamespacedTag(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "actualTag":Ljava/lang/String;
    const-string v1, "^ APPX: About to load full page - Tag = \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->validateAppXAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {p0, v0}, Lcom/julysystems/appx/AppX;->loadAppXFullPage(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 89
    sget-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sHasAttemptedToRegister:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "^ APPX: Cannot register twice!"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    sput-boolean v1, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sHasAttemptedToRegister:Z

    .line 93
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-static {p0, p1, p2, p3}, Lcom/julysystems/appx/AppX;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sput-boolean v1, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sIsAttemptToRegistereSuccesful:Z

    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "^ APPX: Invalid information. Skipping registration"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sIsAttemptToRegistereSuccesful:Z

    goto :goto_0
.end method

.method private static validateAppXAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    sget-boolean v1, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sHasAttemptedToRegister:Z

    if-nez v1, :cond_0

    .line 111
    const-string v1, "^ APPX: We have not attempted to Register - Skipping"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_0
    sget-boolean v1, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sIsAttemptToRegistereSuccesful:Z

    if-nez v1, :cond_1

    .line 116
    const-string v1, "^ APPX: The attempt to register was not succesful - Skipping"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isAttemptToRegisteredSuccesful()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sIsAttemptToRegistereSuccesful:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->sLogsEnabled:Z

    return v0
.end method
