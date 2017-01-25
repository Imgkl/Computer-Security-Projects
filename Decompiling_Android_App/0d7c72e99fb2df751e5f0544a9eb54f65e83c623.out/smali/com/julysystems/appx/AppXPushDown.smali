.class public Lcom/julysystems/appx/AppXPushDown;
.super Landroid/widget/LinearLayout;
.source "AppXPushDown.java"

# interfaces
.implements Lcom/julysystems/appx/AppXDataRequestListener;
.implements Lcom/julysystems/appx/AppXRegistrationListner;
.implements Lcom/julysystems/appx/AppXViewUpdateListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_PUSHDOWN"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appXTag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

.field private mainLayout:Landroid/widget/LinearLayout;

.field protected pushDownCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    .line 20
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    .line 20
    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    .line 29
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iput-object p1, p0, Lcom/julysystems/appx/AppXPushDown;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    .line 32
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/julysystems/appx/AppXUtils;->initConstants(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 38
    invoke-static {p0}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, "APPX_PUSHDOWN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APPX Not Supported for the version ::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showPushDown()V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXPushDown;->addView(Landroid/view/View;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDisplayHint(I)V
    .locals 3
    .param p1, "hint"    # I

    .prologue
    .line 86
    const-string v0, "APPX_PUSHDOWN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayHint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 89
    :cond_0
    return-void
.end method

.method public onRegistrationSuccess()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    invoke-static {v0, v1, p0, p0}, Lcom/julysystems/appx/AppXUtils;->loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 113
    return-void
.end method

.method public onRequestComplete(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Z)V
    .locals 9
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p3, "isRefreshRequest"    # Z

    .prologue
    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPushDown;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 68
    .local v6, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    if-eqz p3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 70
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    invoke-interface {v0, p0}, Lcom/julysystems/appx/AppXViewListner;->onFinishLoading(Landroid/view/View;)V

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/julysystems/appx/AppXPushDown;->showPushDown()V

    .line 82
    return-void

    .line 70
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 71
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPushDown;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v7

    .line 72
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 73
    instance-of v0, v7, Lcom/julysystems/appx/AppXWebView;

    if-eqz v0, :cond_4

    .line 74
    iget v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const-string v0, "APPX_PUSHDOWN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AppX Push Down Added View is ::::: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestFailure()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AppXPushDown Request Failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/julysystems/appx/AppXViewListner;->onFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onViewFailedToLoad()V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    .line 124
    invoke-direct {p0}, Lcom/julysystems/appx/AppXPushDown;->showPushDown()V

    .line 125
    return-void
.end method

.method public onViewFinishedLoading()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXPushDown;->pushDownCounter:I

    .line 118
    invoke-direct {p0}, Lcom/julysystems/appx/AppXPushDown;->showPushDown()V

    .line 119
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "APPX_PUSHDOWN"

    const-string v1, "onWindowFocusChanged. Has focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "APPX_PUSHDOWN"

    const-string v1, "onWindowFocusChanged. Does not have focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 103
    const-string v0, "APPX_PUSHDOWN"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 108
    :cond_0
    return-void
.end method

.method public refresh(Z)V
    .locals 3
    .param p1, "ignoreCache"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/julysystems/appx/AppXPushDown;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXPushDown;->appXTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, p1, v2}, Lcom/julysystems/appx/AppXUtils;->loadContent(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;ZZ)V

    .line 59
    return-void
.end method

.method public setAppXViewListner(Lcom/julysystems/appx/AppXViewListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/julysystems/appx/AppXViewListner;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/julysystems/appx/AppXPushDown;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 49
    return-void
.end method
