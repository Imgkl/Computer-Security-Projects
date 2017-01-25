.class public Lcom/urbanairship/actions/AddCustomEventAction;
.super Lcom/urbanairship/actions/Action;
.source "AddCustomEventAction.java"


# static fields
.field public static final DEFAULT_REGISTRY_NAME:Ljava/lang/String; = "add_custom_event_action"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v1

    const-string v2, "event_name"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "CustomEventAction requires an event name in the event data."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "CustomEventAction requires a map of event data."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 14
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getValue()Lcom/urbanairship/actions/ActionValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/actions/ActionValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 72
    .local v0, "customEventMap":Lcom/urbanairship/json/JsonMap;
    const-string v11, "event_name"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "eventName":Ljava/lang/String;
    const-string v11, "event_value"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "eventStringValue":Ljava/lang/String;
    const-string v11, "event_value"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/urbanairship/json/JsonValue;->getDouble(D)D

    move-result-wide v2

    .line 77
    .local v2, "eventDoubleValue":D
    const-string v11, "transaction_id"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "transactionId":Ljava/lang/String;
    const-string v11, "interaction_type"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "interactionType":Ljava/lang/String;
    const-string v11, "interaction_id"

    invoke-virtual {v0, v11}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "interactionId":Ljava/lang/String;
    new-instance v11, Lcom/urbanairship/analytics/CustomEvent$Builder;

    invoke-direct {v11, v4}, Lcom/urbanairship/analytics/CustomEvent$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setTransactionId(Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object v11

    invoke-virtual {v11, v7, v6}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setInteraction(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getMetadata()Landroid/os/Bundle;

    move-result-object v11

    const-string v13, "com.urbanairship.PUSH_MESSAGE"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {v12, v11}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setAttribution(Lcom/urbanairship/push/PushMessage;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    move-result-object v1

    .line 86
    .local v1, "eventBuilder":Lcom/urbanairship/analytics/CustomEvent$Builder;
    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {v1, v5}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setEventValue(Ljava/lang/String;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    .line 93
    :goto_0
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->getMetadata()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "messageId":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/UAirship;->getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v8

    .line 97
    .local v8, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {v1, v8}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setInteraction(Lcom/urbanairship/richpush/RichPushMessage;)Lcom/urbanairship/analytics/CustomEvent$Builder;

    .line 102
    .end local v8    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v9    # "messageId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/urbanairship/analytics/CustomEvent$Builder;->addEvent()Lcom/urbanairship/analytics/CustomEvent;

    .line 103
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v11

    return-object v11

    .line 89
    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/analytics/CustomEvent$Builder;->setEventValue(D)Lcom/urbanairship/analytics/CustomEvent$Builder;

    goto :goto_0
.end method
