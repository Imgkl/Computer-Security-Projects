.class Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;
.super Landroid/os/AsyncTask;
.source "MyQRCodesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryDatabaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # getter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$100(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/genie_connect/android/db/access/Udm;->qrCodesGet(Landroid/content/Context;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->mQrCodeCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$202(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;Luk/co/alt236/easycursor/EasyCursor;)Luk/co/alt236/easycursor/EasyCursor;

    .line 188
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->this$0:Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;

    # invokes: Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->updateUI()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;->access$500(Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity;)V

    .line 194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 184
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/qrcodes/MyQRCodesActivity$QueryDatabaseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
