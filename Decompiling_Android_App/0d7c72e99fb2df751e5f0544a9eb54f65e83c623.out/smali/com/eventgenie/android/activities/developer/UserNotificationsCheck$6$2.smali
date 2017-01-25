.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6$2;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6$2;->this$1:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6$2;->this$1:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;

    iget-object v0, v0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$6;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const-string v1, "Positive"

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 202
    return-void
.end method
