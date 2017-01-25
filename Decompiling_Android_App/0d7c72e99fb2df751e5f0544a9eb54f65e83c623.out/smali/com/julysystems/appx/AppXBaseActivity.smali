.class abstract Lcom/julysystems/appx/AppXBaseActivity;
.super Landroid/app/Activity;
.source "AppXBaseActivity.java"


# instance fields
.field protected contentView:Landroid/view/View;

.field protected popUpDialog:Lcom/julysystems/appx/AppXPopUpDialog;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseActivity;->popUpDialog:Lcom/julysystems/appx/AppXPopUpDialog;

    .line 17
    iput-object v0, p0, Lcom/julysystems/appx/AppXBaseActivity;->contentView:Landroid/view/View;

    .line 14
    return-void
.end method


# virtual methods
.method protected getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/julysystems/appx/AppXBaseActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected isContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/julysystems/appx/AppXBaseActivity;->contentView:Landroid/view/View;

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget-object v6, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 34
    sget-object v5, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 35
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 37
    sput-object p0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 40
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bunDle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 42
    const-string v5, "PUSH_INTENT_DATA"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "pushUrl":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "iPhoneMode=app&sppMode=true&platform=android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    .line 45
    sget-object v5, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, "customUri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    .line 50
    .end local v1    # "customUri":Landroid/net/Uri;
    .end local v4    # "pushUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 51
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http:/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    .restart local v1    # "customUri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "?iPhoneMode=app&sppMode=true&platform=android"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXConstants;->url:Ljava/lang/String;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    .line 58
    .end local v1    # "customUri":Landroid/net/Uri;
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    return-void
.end method
