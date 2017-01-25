.class Lcom/eventgenie/android/activities/others/LoginActivity$1$1;
.super Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/LoginActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/others/LoginActivity$1;

.field final synthetic val$decodedPassword:Ljava/lang/String;

.field final synthetic val$decodedUsername:Ljava/lang/String;

.field final synthetic val$visitorGsonModel:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/LoginActivity$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/Long;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->this$1:Lcom/eventgenie/android/activities/others/LoginActivity$1;

    iput-object p6, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$decodedUsername:Ljava/lang/String;

    iput-object p7, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$decodedPassword:Ljava/lang/String;

    iput-object p8, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$visitorGsonModel:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/asynctasks/AttemptLoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/genie_connect/android/net/container/NetworkResultAuth;)V
    .locals 4
    .param p1, "result"    # Lcom/genie_connect/android/net/container/NetworkResultAuth;

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/NetworkResultAuth;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "^ LOGIN:  The user also exists on the GC domain"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->this$1:Lcom/eventgenie/android/activities/others/LoginActivity$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/LoginActivity$1;->this$0:Lcom/eventgenie/android/activities/others/LoginActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$decodedUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$decodedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->val$visitorGsonModel:Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    # invokes: Lcom/eventgenie/android/activities/others/LoginActivity;->doSuccessfulAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V
    invoke-static {v0, v1, v2, v3}, Lcom/eventgenie/android/activities/others/LoginActivity;->access$100(Lcom/eventgenie/android/activities/others/LoginActivity;Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;)V

    .line 335
    :goto_0
    return-void

    .line 328
    :cond_0
    const-string v0, "^ LOGIN:  The user does NOT exist on the GC domain"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 316
    check-cast p1, Lcom/genie_connect/android/net/container/NetworkResultAuth;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/LoginActivity$1$1;->onPostExecute(Lcom/genie_connect/android/net/container/NetworkResultAuth;)V

    return-void
.end method
