.class Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;
.super Ljava/lang/Object;
.source "SimpleNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/notifications/SimpleNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleNotificationHolder"
.end annotation


# instance fields
.field private mNotification:Landroid/app/Notification;

.field private mNotificationId:I

.field private mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;


# direct methods
.method public constructor <init>(Landroid/app/Notification;I)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/genie_connect/android/notifications/SimpleNotificationManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": SimpleNotificationHolder() called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notification = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], notificationId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mNotification:Landroid/app/Notification;

    .line 133
    sget-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->WAITING:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    iput-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .line 134
    iput p2, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mNotificationId:I

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;
    .param p1, "x1"    # Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    return-object p1
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mNotificationId:I

    return v0
.end method

.method public getState()Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    return-object v0
.end method

.method public setNotification(Landroid/app/Notification;)V
    .locals 0
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mNotification:Landroid/app/Notification;

    .line 151
    return-void
.end method

.method public setState(Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;)V
    .locals 0
    .param p1, "state"    # Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .line 143
    return-void
.end method
