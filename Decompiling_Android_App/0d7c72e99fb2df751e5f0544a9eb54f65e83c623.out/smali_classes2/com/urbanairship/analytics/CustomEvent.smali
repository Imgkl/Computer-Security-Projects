.class public Lcom/urbanairship/analytics/CustomEvent;
.super Lcom/urbanairship/analytics/Event;
.source "CustomEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/CustomEvent$1;,
        Lcom/urbanairship/analytics/CustomEvent$Builder;
    }
.end annotation


# static fields
.field public static final CONVERSION_SEND_ID:Ljava/lang/String; = "conversion_send_id"

.field public static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final EVENT_VALUE:Ljava/lang/String; = "event_value"

.field public static final INTERACTION_ID:Ljava/lang/String; = "interaction_id"

.field public static final INTERACTION_TYPE:Ljava/lang/String; = "interaction_type"

.field public static final LAST_RECEIVED_SEND_ID:Ljava/lang/String; = "last_received_send_id"

.field private static final MAX_CHARACTER_LENGTH:I = 0xff

.field private static final MAX_VALUE:Ljava/math/BigDecimal;

.field public static final MCRAP_TRANSACTION_TYPE:Ljava/lang/String; = "ua_mcrap"

.field private static final MIN_VALUE:Ljava/math/BigDecimal;

.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"

.field private static final TYPE:Ljava/lang/String; = "custom_event"


# instance fields
.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/Long;

.field private interactionId:Ljava/lang/String;

.field private interactionType:Ljava/lang/String;

.field private sendId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;

    .line 96
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/analytics/CustomEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/urbanairship/analytics/CustomEvent$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/urbanairship/analytics/CustomEvent;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/urbanairship/analytics/CustomEvent;->MAX_VALUE:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/urbanairship/analytics/CustomEvent;->MIN_VALUE:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$302(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->eventName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->eventValue:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$502(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/urbanairship/analytics/CustomEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/analytics/CustomEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected final getEventData()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Analytics;->getConversionSendId()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "conversionSendId":Ljava/lang/String;
    :try_start_0
    const-string v3, "event_name"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v3, "event_value"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->eventValue:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v3, "interaction_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v3, "interaction_type"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->interactionType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v3, "transaction_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v3, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const-string v3, "conversion_send_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/CustomEvent;->sendId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :goto_0
    return-object v1

    .line 133
    :cond_0
    if-eqz v0, :cond_1

    .line 134
    const-string v3, "conversion_send_id"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CustomEvent - Error constructing JSON data."

    invoke-static {v3, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v3, "last_received_send_id"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getLastReceivedSendId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "custom_event"

    return-object v0
.end method
