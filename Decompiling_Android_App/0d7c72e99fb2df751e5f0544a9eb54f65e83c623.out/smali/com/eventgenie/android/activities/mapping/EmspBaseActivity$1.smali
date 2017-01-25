.class Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;
.super Ljava/lang/Object;
.source "EmspBaseActivity.java"

# interfaces
.implements Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->lookupLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
    .locals 4
    .param p1, "successful"    # Z
    .param p2, "isLocationMissing"    # Z
    .param p3, "payload"    # Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D: Callback payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    invoke-virtual {v0, p3}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->onLocationFound(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    .line 110
    :goto_0
    return-void

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    sget v2, Lcom/eventgenie/android/R$string;->notify_action_title:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    sget v3, Lcom/eventgenie/android/R$string;->emsp_invalid_ssid_message:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createDialogueBuilderOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->emsp_invalid_ssid_connect:I

    new-instance v2, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1$1;-><init>(Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;

    sget v1, Lcom/eventgenie/android/R$string;->emsp_retrieve_location_failed:I

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
