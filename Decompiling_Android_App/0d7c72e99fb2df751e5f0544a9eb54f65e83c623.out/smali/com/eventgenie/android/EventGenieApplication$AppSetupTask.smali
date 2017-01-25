.class Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;
.super Landroid/os/AsyncTask;
.source "EventGenieApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/EventGenieApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/EventGenieApplication;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/EventGenieApplication;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "settings":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    # invokes: Lcom/eventgenie/android/EventGenieApplication;->setupPushMessagingPrefs(Landroid/content/SharedPreferences;)V
    invoke-static {v1, v0}, Lcom/eventgenie/android/EventGenieApplication;->access$000(Lcom/eventgenie/android/EventGenieApplication;Landroid/content/SharedPreferences;)V

    .line 113
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;->this$0:Lcom/eventgenie/android/EventGenieApplication;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    return-object v1
.end method
