.class Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;
.super Ljava/lang/Object;
.source "BaseDebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/BaseDebugActivity;->showOfflineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/BaseDebugActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/BaseDebugActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/BaseDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/BaseDebugActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/developer/BaseDebugActivity;->startActivityCarefully(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/BaseDebugActivity;

    const-string v2, "There was an error opening the Settings page. Please try manually."

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
