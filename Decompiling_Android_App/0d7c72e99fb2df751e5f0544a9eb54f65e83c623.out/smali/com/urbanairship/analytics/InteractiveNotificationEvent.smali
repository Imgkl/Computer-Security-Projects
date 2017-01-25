.class public Lcom/urbanairship/analytics/InteractiveNotificationEvent;
.super Lcom/urbanairship/analytics/Event;
.source "InteractiveNotificationEvent.java"


# static fields
.field private static final BUTTON_DESCRIPTION_KEY:Ljava/lang/String; = "button_description"

.field private static final BUTTON_GROUP_KEY:Ljava/lang/String; = "button_group"

.field private static final BUTTON_ID_KEY:Ljava/lang/String; = "button_id"

.field private static final FOREGROUND_KEY:Ljava/lang/String; = "foreground"

.field private static final SEND_ID_KEY:Ljava/lang/String; = "send_id"

.field private static final TYPE:Ljava/lang/String; = "interactive_notification_action"


# instance fields
.field private buttonDescription:Ljava/lang/String;

.field private buttonGroupId:Ljava/lang/String;

.field private buttonId:Ljava/lang/String;

.field private isForeground:Z

.field private sendId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/PushMessage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Lcom/urbanairship/push/PushMessage;
    .param p2, "buttonId"    # Ljava/lang/String;
    .param p3, "buttonDescription"    # Ljava/lang/String;
    .param p4, "isForeground"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getSendId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->sendId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->getInteractiveNotificationType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonGroupId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonDescription:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->isForeground:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "send_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->sendId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "button_group"

    iget-object v3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "button_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "button_description"

    iget-object v3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->buttonDescription:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "foreground"

    iget-boolean v3, p0, Lcom/urbanairship/analytics/InteractiveNotificationEvent;->isForeground:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "InteractiveNotificationEvent - Error constructing JSON data."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "interactive_notification_action"

    return-object v0
.end method
