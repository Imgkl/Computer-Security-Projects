.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$3;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createNotifcationClear()Landroid/view/View;
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
    .line 133
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$3;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$3;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 138
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    return-void
.end method
