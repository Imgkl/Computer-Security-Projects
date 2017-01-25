.class public Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;
.super Ljava/lang/Object;
.source "UpdateIntentNotificationEvent.java"


# instance fields
.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->title:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->version:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->title:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/notification/UpdateIntentNotificationEvent;->version:Ljava/lang/String;

    .line 29
    return-void
.end method
