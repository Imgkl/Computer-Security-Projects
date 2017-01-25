.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPostUrlTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 112
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 113
    .local v8, "request":Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v12}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/secure/rest/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "activitystreamposts/rpc/get_create_url"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "url":Ljava/lang/String;
    :try_start_0
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    const-string v11, "EGNAMESPACE"

    iget-object v12, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v12}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v11, "AUTHORIZATION"

    iget-object v12, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v12}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/android/net/providers/NetworkBase;->getVisitorAuthString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v9, 0x0

    .line 126
    .local v9, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-interface {v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 132
    :goto_1
    const/4 v6, 0x0

    .line 133
    .local v6, "reader":Ljava/io/BufferedReader;
    if-eqz v9, :cond_1

    .line 135
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 144
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v6, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "line":Ljava/lang/String;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "finalResult":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ ActivityStreamPost JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 156
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v11

    .line 162
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "finalResult":Lorg/json/JSONObject;
    .end local v5    # "line":Ljava/lang/String;
    :goto_4
    return-object v11

    .line 117
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 118
    .local v2, "e1":Ljava/net/URISyntaxException;
    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_0

    .line 127
    .end local v2    # "e1":Ljava/net/URISyntaxException;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v1

    .line 128
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .line 138
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 139
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v2

    .line 140
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 141
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v2

    .line 142
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 158
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 162
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 169
    if-nez p1, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    sget v2, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 174
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ ActivityStreamPost Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    # setter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->postUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->access$002(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivityStreamPostActivity;->postUrlRetrieved:Z

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 181
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$GetPostUrlTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method
