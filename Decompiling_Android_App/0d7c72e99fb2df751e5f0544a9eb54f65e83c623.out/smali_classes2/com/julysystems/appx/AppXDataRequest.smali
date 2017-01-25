.class Lcom/julysystems/appx/AppXDataRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXDataRequest.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isRefreshRequest:Z

.field private mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

.field pageData:Lcom/julysystems/appx/AppXPageData;

.field private parentActivity:Lcom/julysystems/appx/AppXBaseActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "DataRequest"

    sput-object v0, Lcom/julysystems/appx/AppXDataRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I

    .prologue
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->parentActivity:Lcom/julysystems/appx/AppXBaseActivity;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I
    .param p4, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 28
    invoke-direct {p0, p2, p3}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->parentActivity:Lcom/julysystems/appx/AppXBaseActivity;

    .line 29
    iput-object p4, p0, Lcom/julysystems/appx/AppXDataRequest;->parentActivity:Lcom/julysystems/appx/AppXBaseActivity;

    .line 30
    return-void
.end method


# virtual methods
.method public isRefreshRequest()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/julysystems/appx/AppXDataRequest;->isRefreshRequest:Z

    return v0
.end method

.method public onFailure()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

    invoke-interface {v0}, Lcom/julysystems/appx/AppXDataRequestListener;->onRequestFailure()V

    .line 70
    :cond_0
    return-void
.end method

.method public onRefreshLoadData(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V
    .locals 2
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 21
    sget-object v0, Lcom/julysystems/appx/AppXDataRequest;->TAG:Ljava/lang/String;

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

    iget-boolean v1, p0, Lcom/julysystems/appx/AppXDataRequest;->isRefreshRequest:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/julysystems/appx/AppXDataRequestListener;->onRequestComplete(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Z)V

    .line 25
    :cond_0
    return-void
.end method

.method public postExecute()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/julysystems/appx/AppXDataRequest;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXPageData;->getDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 58
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 60
    .local v1, "rootElement":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lcom/julysystems/appx/AppXDataRequest;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {p0, v1, v2}, Lcom/julysystems/appx/AppXDataRequest;->onRefreshLoadData(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;)V

    .line 64
    .end local v1    # "rootElement":Lorg/w3c/dom/Element;
    :cond_0
    return-void
.end method

.method public processData([BZ)Z
    .locals 3
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    .line 38
    sget-object v0, Lcom/julysystems/appx/AppXDataRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/julysystems/appx/AppXPageData;

    invoke-direct {v0, p1}, Lcom/julysystems/appx/AppXPageData;-><init>([B)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 40
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXPageData;->readData()V

    .line 41
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->parentActivity:Lcom/julysystems/appx/AppXBaseActivity;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/julysystems/appx/AppXDataRequest;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXPageData;->preloadComponents()V

    .line 43
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setOnDataRefreshListener(Lcom/julysystems/appx/AppXDataRequestListener;)V
    .locals 0
    .param p1, "mRequestListener"    # Lcom/julysystems/appx/AppXDataRequestListener;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/julysystems/appx/AppXDataRequest;->mRequestListener:Lcom/julysystems/appx/AppXDataRequestListener;

    .line 17
    return-void
.end method

.method public setRefreshRequest(Z)V
    .locals 0
    .param p1, "isRefreshRequest"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/julysystems/appx/AppXDataRequest;->isRefreshRequest:Z

    .line 86
    return-void
.end method
