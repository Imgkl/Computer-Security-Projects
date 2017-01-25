.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;
.super Landroid/os/AsyncTask;
.source "MyProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostProfileUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 6
    .param p1, "arg0"    # [Lorg/json/JSONObject;

    .prologue
    .line 1094
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {v0, v2}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    const-string/jumbo v2, "visitors"

    iget-object v3, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mVisitorId:J
    invoke-static {v3}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$600(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)J

    move-result-wide v4

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForJson(Ljava/lang/String;JLorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    .line 1096
    .local v1, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1090
    check-cast p1, [Lorg/json/JSONObject;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->doInBackground([Lorg/json/JSONObject;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 5
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v4, 0x0

    .line 1101
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V

    .line 1103
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-virtual {v1, v4, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->showIndicator(ZZ)V

    .line 1104
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1106
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 1107
    .local v0, "visitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/genie_connect/common/db/model/Visitor;

    if-eqz v1, :cond_0

    .line 1108
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->updateVisitorProfile(Lorg/json/JSONObject;)V

    .line 1112
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mCbEnableNetworking:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$900(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # setter for: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->mIsManualEdit:Z
    invoke-static {v1, v4}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$1002(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Z)Z

    .line 1114
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->cancelCallback()V
    invoke-static {v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$1100(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    .line 1125
    .end local v0    # "visitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :goto_0
    return-void

    .line 1116
    .restart local v0    # "visitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->okCallback(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    invoke-static {v1, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$1200(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    goto :goto_0

    .line 1120
    .end local v0    # "visitor":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-static {v2, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1090
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$PostProfileUpdateTask;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->showIndicator(ZZ)V

    .line 1130
    return-void
.end method
