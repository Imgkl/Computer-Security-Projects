.class public Lcom/julysystems/appx/AppXDownloadBackgroundTask;
.super Landroid/os/AsyncTask;
.source "AppXDownloadBackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static isDownloadInProgress:Z

.field private static mAppXViewUpdateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/julysystems/appx/AppXRegistrationListner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isDownloadInProgress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    sget-object v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    .line 16
    :cond_0
    return-void
.end method

.method public static addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V
    .locals 2
    .param p0, "listener"    # Lcom/julysystems/appx/AppXRegistrationListner;

    .prologue
    .line 59
    sget-object v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    .line 61
    :cond_0
    sget-boolean v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isDownloadInProgress:Z

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "APPX"

    const-string v1, "Adding UpdateListener to queue"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "APPX"

    const-string v1, "Adding UpdateListener to queue"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Lcom/julysystems/appx/AppXRegistrationListner;->onRegistrationSuccess()V

    goto :goto_0
.end method

.method protected static isInProgress()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isDownloadInProgress:Z

    return v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "APPX"

    const-string v1, "AppXDownloadBackgroundTask doInBackground"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isDownloadInProgress:Z

    .line 22
    invoke-static {}, Lcom/julysystems/appx/AppX;->downloadManifest()V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 28
    const-string v2, "APPX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppXDownloadBackgroundTask onPostExecute... Before updating tag map "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sput-boolean v5, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->isDownloadInProgress:Z

    .line 30
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateTagMap()V

    .line 31
    const-string v2, "APPX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppXDownloadBackgroundTask onPostExecute... After updating tag map "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_0
    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 34
    const-string v2, "APPX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notifying lisntners "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 44
    :cond_0
    :goto_1
    return-void

    .line 35
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/julysystems/appx/AppXRegistrationListner;

    .line 36
    .local v0, "appXViewUpdateListner":Lcom/julysystems/appx/AppXRegistrationListner;
    invoke-interface {v0}, Lcom/julysystems/appx/AppXRegistrationListner;->onRegistrationSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v0    # "appXViewUpdateListner":Lcom/julysystems/appx/AppXRegistrationListner;
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppXDownloadBackgroundTask"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    sget-object v2, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->mAppXViewUpdateListners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 56
    return-void
.end method
