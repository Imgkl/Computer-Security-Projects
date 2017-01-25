.class Lcom/julysystems/appx/AppXPageRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXPageRequest.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field timeDelay:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "forceRequest"    # Z

    .prologue
    .line 17
    const/16 v0, 0xb4

    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 14
    const-string v0, "PageRequest"

    iput-object v0, p0, Lcom/julysystems/appx/AppXPageRequest;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXPageRequest;->timeDelay:I

    .line 18
    iput-boolean p2, p0, Lcom/julysystems/appx/AppXPageRequest;->forceRequest:Z

    .line 19
    sput-object p1, Lcom/julysystems/appx/AppXUtils;->currentUrl:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public isAutorefreshOn()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onFailure()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public postExecute()V
    .locals 6

    .prologue
    .line 50
    sget-object v4, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/julysystems/appx/AppXPageActivity;

    if-eqz v4, :cond_0

    .line 52
    :try_start_0
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v3, Lcom/julysystems/appx/AppXPageActivity;

    .line 53
    .local v3, "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    iget-object v4, v3, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 54
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 55
    .local v2, "element":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/julysystems/appx/AppXPageRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/julysystems/appx/AppXPageRequest;->requestStateListner:Lcom/julysystems/appx/AppXRequestStateListner;

    invoke-interface {v4, v2}, Lcom/julysystems/appx/AppXRequestStateListner;->onComplete(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/julysystems/appx/AppXPageRequest;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processData([BZ)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-boolean v3, p0, Lcom/julysystems/appx/AppXPageRequest;->cancelled:Z

    if-eqz v3, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v2

    .line 25
    :cond_1
    iget-object v3, p0, Lcom/julysystems/appx/AppXPageRequest;->TAG:Ljava/lang/String;

    const-string v4, "Process Data Started"

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/julysystems/appx/AppXPageData;

    invoke-direct {v1, p1}, Lcom/julysystems/appx/AppXPageData;-><init>([B)V

    .line 27
    .local v1, "pageData":Lcom/julysystems/appx/AppXPageData;
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/julysystems/appx/AppXPageActivity;

    if-eqz v3, :cond_0

    .line 28
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    check-cast v0, Lcom/julysystems/appx/AppXPageActivity;

    .line 29
    .local v0, "pageActivity":Lcom/julysystems/appx/AppXPageActivity;
    iput-object v1, v0, Lcom/julysystems/appx/AppXPageActivity;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 30
    sget-boolean v3, Lcom/julysystems/appx/AppX;->histroyRequest:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/julysystems/appx/AppXUtils;->hideLoader:Z

    if-nez v3, :cond_2

    .line 31
    sget-object v3, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 32
    iget-object v3, p0, Lcom/julysystems/appx/AppXPageRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Going to add the url in to the history"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v3, Lcom/julysystems/appx/AppX;->historyUrls:Ljava/util/Vector;

    sget-object v4, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    sput-boolean v2, Lcom/julysystems/appx/AppX;->histroyRequest:Z

    .line 38
    iget-object v3, p0, Lcom/julysystems/appx/AppXPageRequest;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 39
    sput-boolean v2, Lcom/julysystems/appx/AppXUtils;->hideLoader:Z

    .line 40
    iget-object v2, p0, Lcom/julysystems/appx/AppXPageRequest;->TAG:Ljava/lang/String;

    const-string v3, "Process Data Ended"

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x1

    goto :goto_0
.end method
