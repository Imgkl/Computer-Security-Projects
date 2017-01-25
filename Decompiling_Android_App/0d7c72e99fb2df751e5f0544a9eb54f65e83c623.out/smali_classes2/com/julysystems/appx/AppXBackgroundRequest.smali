.class Lcom/julysystems/appx/AppXBackgroundRequest;
.super Lcom/julysystems/appx/AppXURLRequest;
.source "AppXBackgroundRequest.java"


# instance fields
.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheDuration"    # I
    .param p3, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXBackgroundRequest;->url:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXBackgroundRequest;->forceRequest:Z

    .line 16
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postParams"    # Ljava/lang/String;
    .param p3, "cacheDuration"    # I
    .param p4, "parentActivity"    # Lcom/julysystems/appx/AppXBaseActivity;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/julysystems/appx/AppXURLRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXBackgroundRequest;->url:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/julysystems/appx/AppXBackgroundRequest;->forceRequest:Z

    .line 21
    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public postExecute()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public processData([BZ)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "cached"    # Z

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
