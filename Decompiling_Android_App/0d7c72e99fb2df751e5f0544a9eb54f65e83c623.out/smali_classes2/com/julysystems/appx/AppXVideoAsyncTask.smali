.class Lcom/julysystems/appx/AppXVideoAsyncTask;
.super Landroid/os/AsyncTask;
.source "AppXVideoAsyncTask.java"


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
.field protected static connection:Ljava/net/URLConnection;

.field protected static httpURLConn:Ljava/net/HttpURLConnection;

.field protected static url:Ljava/net/URL;

.field protected static videoUrl:Ljava/lang/String;


# instance fields
.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    .line 21
    sput-object p1, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private static openConnection(Ljava/lang/String;)I
    .locals 5
    .param p0, "connectionURL"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->url:Ljava/net/URL;

    .line 86
    sget-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    sput-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->connection:Ljava/net/URLConnection;

    .line 87
    sget-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->connection:Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;

    sput-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    .line 88
    sget-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 89
    sget-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 90
    sget-object v2, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 96
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "me":Ljava/net/MalformedURLException;
    const-string v2, "VIDEO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MalformedURLException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "me":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VIDEO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/julysystems/appx/AppXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXVideoAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 46
    const/4 v4, 0x3

    .line 47
    .local v4, "noOfTrys":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_3

    .line 58
    :cond_0
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_1

    .line 59
    iget-object v6, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    :cond_1
    sget-object v6, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v6, ""

    sget-object v7, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 61
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "video/*"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    sget-object v6, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    const/4 v6, 0x0

    return-object v6

    .line 48
    :cond_3
    sget-object v6, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/julysystems/appx/AppXVideoAsyncTask;->openConnection(Ljava/lang/String;)I

    move-result v5

    .line 49
    .local v5, "responseCode":I
    const/16 v6, 0x12e

    if-eq v5, v6, :cond_4

    const/16 v6, 0x12d

    if-ne v5, v6, :cond_5

    .line 50
    :cond_4
    sget-object v6, Lcom/julysystems/appx/AppXVideoAsyncTask;->connection:Ljava/net/URLConnection;

    const-string v7, "Location"

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "alternateURL":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v6, "://"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 52
    sput-object v0, Lcom/julysystems/appx/AppXVideoAsyncTask;->videoUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    .end local v0    # "alternateURL":Ljava/lang/String;
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseCode":I
    :cond_5
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 47
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXVideoAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    sget-object v0, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXVideoAsyncTask;->httpURLConn:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 27
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 30
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    const-string v2, ""

    const-string v3, "Loading ..."

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 33
    iget-object v1, p0, Lcom/julysystems/appx/AppXVideoAsyncTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
