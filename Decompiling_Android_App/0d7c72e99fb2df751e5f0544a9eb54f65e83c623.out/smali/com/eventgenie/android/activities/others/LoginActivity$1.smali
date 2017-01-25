.class Lcom/eventgenie/android/activities/others/LoginActivity$1;
.super Landroid/webkit/WebViewClient;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/LoginActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/LoginActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LOGIN:  onPageCommitVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 24
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LOGIN:  loaded finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "cookie":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 281
    const-string v2, ";"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 282
    .local v23, "split":[Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 283
    move-object/from16 v11, v23

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v22, v11, v16

    .line 284
    .local v22, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LOGIN:  Cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lanyon.mobile.lm_sso_data="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 292
    const-string v2, "com.lanyon.mobile.lm_sso_data="

    const-string v3, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 293
    .local v21, "replace":Ljava/lang/String;
    new-instance v13, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    .line 296
    .local v13, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v20, "obje":Lorg/json/JSONObject;
    const-string/jumbo v2, "username"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "decodedUsername":Ljava/lang/String;
    const-string v2, "password"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "decodedPassword":Ljava/lang/String;
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    .line 301
    .local v15, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-virtual {v15, v13, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    .line 303
    .local v10, "visitorGsonModel":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LOGIN:  Decoded Cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LOGIN:  Username:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LOGIN:  Pass:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 310
    invoke-static {v8, v9}, Lcom/genie_connect/android/net/NetworkHelper;->generateBasicAuthString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "auth_string":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->getRestServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/visitors/rpc/whoami"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "whoAmIRpcCallUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    # getter for: Lcom/eventgenie/android/activities/others/LoginActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$000(Lcom/eventgenie/android/activities/others/LoginActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v18

    .line 315
    .local v18, "namespace":J
    new-instance v2, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;-><init>(Lcom/eventgenie/android/activities/others/LoginActivity$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v5    # "auth_string":Ljava/lang/String;
    .end local v6    # "whoAmIRpcCallUrl":Ljava/lang/String;
    .end local v8    # "decodedUsername":Ljava/lang/String;
    .end local v9    # "decodedPassword":Ljava/lang/String;
    .end local v10    # "visitorGsonModel":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "decoded":Ljava/lang/String;
    .end local v15    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "namespace":J
    .end local v20    # "obje":Lorg/json/JSONObject;
    .end local v21    # "replace":Ljava/lang/String;
    .end local v22    # "s":Ljava/lang/String;
    .end local v23    # "split":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 339
    .restart local v11    # "arr$":[Ljava/lang/String;
    .restart local v13    # "decoded":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    .restart local v21    # "replace":Ljava/lang/String;
    .restart local v22    # "s":Ljava/lang/String;
    .restart local v23    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 340
    .local v14, "e":Lorg/json/JSONException;
    const-string v2, "^ LOGIN:  some issue decoding the cookie "

    invoke-static {v2, v14}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 283
    .end local v13    # "decoded":Ljava/lang/String;
    .end local v14    # "e":Lorg/json/JSONException;
    .end local v21    # "replace":Ljava/lang/String;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LOGIN:  onPageStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 263
    return-void
.end method
