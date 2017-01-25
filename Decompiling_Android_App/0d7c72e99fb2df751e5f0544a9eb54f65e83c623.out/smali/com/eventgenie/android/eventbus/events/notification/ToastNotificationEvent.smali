.class public Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;
.super Ljava/lang/Object;
.source "ToastNotificationEvent.java"


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mType:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->mMessage:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->mType:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 15
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;->mType:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    return-object v0
.end method
