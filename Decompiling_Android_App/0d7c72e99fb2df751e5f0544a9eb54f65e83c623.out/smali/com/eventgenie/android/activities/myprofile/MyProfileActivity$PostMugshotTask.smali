.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;
.super Landroid/os/AsyncTask;
.source "MyProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostMugshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1004
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    .line 1005
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1009
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1010
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-static {v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 1011
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1059
    :goto_0
    return-object v6

    .line 1014
    :cond_0
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {v1, v6}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 1015
    .local v1, "netDownloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {v2, v6}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 1016
    .local v2, "netSender":Lcom/genie_connect/android/net/providers/NetworkSender;
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mVisitorId:J
    invoke-static {v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$600(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getUserMugshotUpload(J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 1018
    .local v4, "res":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1019
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 1020
    .local v0, "jObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_4

    .line 1021
    const-string v6, "data"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1024
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1025
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mMugshotPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$400(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uploadedfileFlash"

    invoke-virtual {v2, v5, v6, v7}, Lcom/genie_connect/android/net/providers/NetworkSender;->postMugshot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 1027
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1029
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_1
    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getUserProfile()Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v4

    .line 1034
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1035
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v6

    check-cast v6, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v6}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 1038
    .local v3, "o":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    # setter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;
    invoke-static {v6, v7}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$702(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1039
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$700(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1040
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # setter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;
    invoke-static {v6, v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$702(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 1044
    :cond_1
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$700(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1045
    iget-object v6, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mUserProfile:Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$700(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Lorg/json/JSONObject;

    move-result-object v7

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->loadPhotoFromProfile(Lorg/json/JSONObject;)V
    invoke-static {v6, v7}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$800(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lorg/json/JSONObject;)V

    .line 1059
    .end local v0    # "jObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 1051
    .restart local v0    # "jObject":Lcom/genie_connect/common/platform/json/IJsonObject;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    const-string v6, "^ URL was NULL/empty!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 1052
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 1055
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    const-string v6, "^ JSON object was NULL!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 1056
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_0

    .line 1030
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1000
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1068
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    sget v1, Lcom/eventgenie/android/R$string;->image_upload_upload_succesful:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 1080
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    sget v1, Lcom/eventgenie/android/R$string;->image_upload_upload_failed:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1000
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    sget v2, Lcom/eventgenie/android/R$string;->image_upload_uploading_photo:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1086
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostMugshotTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1087
    return-void
.end method
