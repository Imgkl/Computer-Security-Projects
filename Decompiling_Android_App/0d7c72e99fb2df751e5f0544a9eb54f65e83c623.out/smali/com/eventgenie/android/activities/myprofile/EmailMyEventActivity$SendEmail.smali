.class Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;
.super Landroid/os/AsyncTask;
.source "EmailMyEventActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendEmail"
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
.field message:Ljava/lang/String;

.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;-><init>(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    .line 341
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v3, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsRestrictedEmailEntry:Z
    invoke-static {v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$100(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 346
    :try_start_0
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "email"

    iget-object v9, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mEmail:Landroid/widget/AutoCompleteTextView;
    invoke-static {v9}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$200(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-virtual {v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 355
    .local v0, "checked":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 357
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 358
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mModules:Ljava/util/List;
    invoke-static {v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$400(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/db/config/GenieMobileModule;

    iget-object v8, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsLogged:Z
    invoke-static {v8}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$300(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Z

    move-result v8

    invoke-virtual {v7, v8, v3}, Lcom/genie_connect/android/db/config/GenieMobileModule;->toEmail(ZLjava/util/List;)V

    .line 355
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "checked":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "email"

    const-string v9, "Invalid Email"

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checked":Landroid/util/SparseBooleanArray;
    .restart local v2    # "i":I
    :cond_2
    const/4 v6, 0x0

    .line 363
    .local v6, "res":Z
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/ReachabilityManager;->isReady()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 364
    new-instance v4, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-direct {v4, v7}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 365
    .local v4, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mIsLogged:Z
    invoke-static {v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$300(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Z

    move-result v7

    invoke-virtual {v4, v3, v7}, Lcom/genie_connect/android/net/providers/NetworkSender;->postEmailMyEvent(Ljava/util/List;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v5

    .line 366
    .local v5, "netRes":Lcom/genie_connect/common/net/container/NetworkResult;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/genie_connect/common/net/container/NetworkResult;->isSuccesful()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 367
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    # getter for: Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->mMyEventConfig:Lcom/genie_connect/android/db/config/widgets/MyEventConfig;
    invoke-static {v7}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->access$500(Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;)Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getEmailMeMyEventConfirmation()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    .line 368
    const/4 v6, 0x1

    .line 379
    .end local v4    # "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    .end local v5    # "netRes":Lcom/genie_connect/common/net/container/NetworkResult;
    :cond_3
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 370
    .restart local v4    # "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    .restart local v5    # "netRes":Lcom/genie_connect/common/net/container/NetworkResult;
    :cond_4
    if-eqz v5, :cond_3

    .line 371
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-static {v7, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    goto :goto_2

    .line 376
    .end local v4    # "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    .end local v5    # "netRes":Lcom/genie_connect/common/net/container/NetworkResult;
    :cond_5
    iget-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    sget v8, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {v7, v8}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 393
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->finish()V

    .line 394
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->message:Ljava/lang/String;

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 336
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity$SendEmail;->this$0:Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/myprofile/EmailMyEventActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_LEFT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 399
    return-void
.end method
