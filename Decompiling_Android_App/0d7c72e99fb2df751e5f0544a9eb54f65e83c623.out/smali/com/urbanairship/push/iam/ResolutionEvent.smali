.class public Lcom/urbanairship/push/iam/ResolutionEvent;
.super Lcom/urbanairship/analytics/Event;
.source "ResolutionEvent.java"


# static fields
.field private static final BUTTON_DESCRIPTION:Ljava/lang/String; = "button_description"

.field private static final BUTTON_GROUP:Ljava/lang/String; = "button_group"

.field private static final BUTTON_ID:Ljava/lang/String; = "button_id"

.field private static final CONVERSION_SEND_ID:Ljava/lang/String; = "conversion_send_id"

.field private static final DISPLAY_TIME:Ljava/lang/String; = "display_time"

.field private static final EXPIRY:Ljava/lang/String; = "expiry"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final REPLACEMENT_ID:Ljava/lang/String; = "replacement_id"

.field private static final RESOLUTION:Ljava/lang/String; = "resolution"

.field private static final RESOLUTION_BUTTON_CLICK:Ljava/lang/String; = "button_click"

.field private static final RESOLUTION_DIRECT_OPEN:Ljava/lang/String; = "direct_open"

.field private static final RESOLUTION_EXPIRED:Ljava/lang/String; = "expired"

.field private static final RESOLUTION_MESSAGE_CLICK:Ljava/lang/String; = "message_click"

.field private static final RESOLUTION_REPLACED:Ljava/lang/String; = "replaced"

.field private static final RESOLUTION_TIMED_OUT:Ljava/lang/String; = "timed_out"

.field private static final RESOLUTION_TYPE:Ljava/lang/String; = "type"

.field private static final RESOLUTION_USER_DISMISSED:Ljava/lang/String; = "user_dismissed"

.field private static final TYPE:Ljava/lang/String; = "in_app_resolution"


# instance fields
.field private final id:Ljava/lang/String;

.field private final resolutionData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/urbanairship/push/iam/ResolutionEvent;->id:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/urbanairship/push/iam/ResolutionEvent;->resolutionData:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public static createButtonClickedResolutionEvent(Landroid/content/Context;Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/notifications/NotificationActionButton;J)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p2, "button"    # Lcom/urbanairship/push/notifications/NotificationActionButton;
    .param p3, "displayMs"    # J

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string v2, "button_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "button_id"

    invoke-virtual {p2}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "button_group"

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->getButtonGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "display_time"

    invoke-static {p3, p4}, Lcom/urbanairship/push/iam/ResolutionEvent;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p2}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "button_description"

    invoke-virtual {p2}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    :goto_0
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getLabel()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    const-string v1, "button_description"

    invoke-virtual {p2}, Lcom/urbanairship/push/notifications/NotificationActionButton;->getLabel()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static createClickedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "displayMs"    # J

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string v2, "message_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/ResolutionEvent;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static createDirectOpenResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string v2, "direct_open"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static createExpiredResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 4
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string v2, "expired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "expiry"

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getExpiry()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/urbanairship/util/DateUtils;->createIso8601TimeStamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static createReplacedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "replaced"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "replacement"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string v2, "replaced"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "replacement_id"

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static createTimedOutResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "displayMs"    # J

    .prologue
    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "timed_out"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/ResolutionEvent;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static createUserDismissedResolutionEvent(Lcom/urbanairship/push/iam/InAppMessage;J)Lcom/urbanairship/push/iam/ResolutionEvent;
    .locals 3
    .param p0, "message"    # Lcom/urbanairship/push/iam/InAppMessage;
    .param p1, "displayMs"    # J

    .prologue
    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "resolutionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "user_dismissed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "display_time"

    invoke-static {p1, p2}, Lcom/urbanairship/push/iam/ResolutionEvent;->millisecondsToSecondsString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v1, Lcom/urbanairship/push/iam/ResolutionEvent;

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/InAppMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/push/iam/ResolutionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    iget-object v3, p0, Lcom/urbanairship/push/iam/ResolutionEvent;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "resolution"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/urbanairship/push/iam/ResolutionEvent;->resolutionData:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v2, "conversion_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ResolutionEvent - Error constructing JSON data."

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "in_app_resolution"

    return-object v0
.end method
