.class Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$12;
.super Ljava/lang/Object;
.source "UserNotificationsCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;->createToastNoNetwork()Landroid/view/View;
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
    .line 313
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$12;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/UserNotificationsCheck$12;->this$0:Lcom/eventgenie/android/activities/developer/UserNotificationsCheck;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 318
    return-void
.end method
