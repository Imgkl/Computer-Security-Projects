.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createNotifcationAlert()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 114
    .local v0, "manager":Landroid/app/NotificationManager;
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$2;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const/4 v3, 0x0

    const-string v4, "Notification - Alert"

    const-string v5, "Title"

    const-string v6, "Message"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createNotificationAlert(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 121
    .local v1, "note":Landroid/app/Notification;
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 122
    return-void
.end method
